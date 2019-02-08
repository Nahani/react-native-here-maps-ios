using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Here.Maps.Ios.RNHereMapsIos
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNHereMapsIosModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNHereMapsIosModule"/>.
        /// </summary>
        internal RNHereMapsIosModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNHereMapsIos";
            }
        }
    }
}
