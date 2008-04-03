/*
 *      This program is free software; you can redistribute it and/or modify
 *      it under the terms of the GNU General Public License as published by
 *      the Free Software Foundation; either version 2 of the License, or
 *      (at your option) any later version.
 *
 *      This program is distributed in the hope that it will be useful,
 *      but WITHOUT ANY WARRANTY; without even the implied warranty of
 *      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *      GNU General Public License for more details.
 *
 *      You should have received a copy of the GNU General Public License
 *      along with this program; if not, write to the Free Software
 *      Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 *      MA 02110-1301, USA.
 */

#import "OCColor.h"

@implementation OCColor
- init
{
	[super init];
	r = 0;
	g = 0;
	b = 0;
}

- (OCColor*) ponR: (float) vr
{
	r = vr;
	return self;
}

- (OCColor*) ponG: (float) vg
{
	g = vg;
	return self;
}

- (OCColor*) ponB: (float) vb
{
	b = vb;
	return self;
}

- (float) r
{
	return r;
}

- (float) g
{
	return g;
}

- (float) b
{
	return b;
}

- (OCColor*) suma: (OCColor*) color
{
	r += [color r];
	g += [color g];
	b += [color b];
	return self;
}

 @end
