
local function deg_to_rad(deg)

	rad = deg*(3.14/180.0)
	return rad
	
end

local function rad_to_deg(rad)

	deg = rad*(180.0/3.14)
	return deg
	
end

local function quat_norm(q)

	norm = {}
	len = q[1]*q[1] + q[2]*q[2] + q[3]*q[3] + q[4]*q[4]
	len = len^0.5
	norm[1] = q[1]/len
	norm[2] = q[2]/len
	norm[3] = q[3]/len
	norm[4] = q[4]/len
	return norm
	
end

local function quat_mult(r, q)

	t = {}
	
	t[1] = r[1]*q[1] - r[2]*q[2] - r[3]*q[3] - r[4]*q[4]
	t[2] = r[1]*q[2] - r[2]*q[1] - r[3]*q[4] - r[4]*q[3]
	t[3] = r[1]*q[3] - r[2]*q[4] - r[3]*q[1] - r[4]*q[2]
	t[4] = r[1]*q[4] - r[2]*q[3] - r[3]*q[2] - r[4]*q[1]
	
	t = quat_norm(t)
	return t
	
end

function pitch(w, x, y, z, deg)

	q = {}
	q[1] = tonumber(w)
	q[2] = tonumber(x)
	q[3] = tonumber(y)
	q[4] = tonumber(z)
	
	r = {}
	rad = deg_to_rad(tonumber(deg))/2.0
	cos_ = math.cos(rad)
	sin_ = math.sin(rad)
	r[1] = cos_ --rotation in degrees about x-axis
	r[2] = 1 * sin_
	r[3] = 0 * sin_
	r[4] = 0 * sin_
	
	q = quat_mult(r, q)
	return tostring(q[1]), tostring(q[2]), tostring(q[3]), tostring(q[4])
	
end

function yaw(w,x,y,z,deg)

	q = {}
	q[1] = tonumber(w)
	q[2] = tonumber(x)
	q[3] = tonumber(y)
	q[4] = tonumber(z)
	
	r = {}
	rad = deg_to_rad(tonumber(deg))/2.0
	cos_ = math.cos(rad)
	sin_ = math.cos(rad)
	r[1] = cos_ -- rotation in degrees about y-axis
	r[2] = 0 * sin_
	r[3] = 1 * sin_
	r[4] = 0 * sin_
	
	q = quat_mult(r,q)
	return tostring(q[1]), tostring(q[2]), tostring(q[3]), tostring(q[4])
	
end

function roll(w,x,y,z,deg)

	q = {}
	q[1] = tonumber(w)
	q[2] = tonumber(x)
	q[3] = tonumber(y)
	q[4] = tonumber(z)
	
	r = {}
	rad = deg_to_rad(tonumber(deg))/2.0
	cos_ = math.cos(rad)
	sin_ = math.sin(rad)
	r[1] = cos_ --rotation in degrees about z-axis
	r[2] = 0 * sin_
	r[3] = 0 * sin_
	r[4] = 1 * sin_
	
	q = quat_mult(r,q)
	return tostring(q[1]), tostring(q[2]), tostring(q[3]), tostring(q[4])
	
end

function do_this(num)

	s = tonumber(num) / 2.0
	t = s * 3.5
	return tostring(t)

end
