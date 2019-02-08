import { NativeModules } from 'react-native';

const { RNHereMapsIos } = NativeModules;

RNHereMapsIos.addEvent('Birthday Party', '4 Privet Drive, Surrey');

export default RNHereMapsIos;
