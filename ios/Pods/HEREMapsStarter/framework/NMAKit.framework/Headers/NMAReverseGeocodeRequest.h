/*
 * Copyright (c) 2011-2018 HERE Global B.V. and its affiliate(s).
 * All rights reserved.
 * The use of this software is conditional upon having a separate agreement
 * with a HERE company for the use or utilization of this software. In the
 * absence of such agreement, the use of the software is not allowed.
 */

#import "NMARequest.h"

/**
 * Represents a request to retrieve NMAPlaceLocation data by way of
 * NMAGeocoder search services.
 *
 * @note A `NMAReverseGeocodeRequest` is a kind of NMARequest, and its response is an instance
 * of NMAReverseGeocodeResult.
 */
@interface NMAReverseGeocodeRequest : NMARequest

@end

