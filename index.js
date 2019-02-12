import React from 'react';
import { requireNativeComponent } from 'react-native';
import PropTypes from 'prop-types';


class MainRNTMap extends React.Component{
    constructor(props){
        super(props);
        
    }
    static propTypes = {
        mapCenter: PropTypes.objectOf,
        markersList: PropTypes.objectOf,
    }

 
    render() {
        return (
                <RNTMap 
                {...this.props} 
                />
        );
      };
};

// requireNativeComponent automatically resolves 'RNTMap' to 'RNTMapManager'
module.exports = requireNativeComponent('RNTMap', MainRNTMap);