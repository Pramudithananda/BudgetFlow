import React from 'react';
import { View, Dimensions } from 'react-native';
import { LineChart, BarChart, PieChart, ProgressChart } from 'react-native-chart-kit';
import { useTheme } from '../context/theme';

const screenWidth = Dimensions.get('window').width;

export const LineChartComponent = ({ data, title, color = '#64a12d' }) => {
  const { isDarkMode } = useTheme();
  
  const chartConfig = {
    backgroundColor: isDarkMode ? '#333' : '#fff',
    backgroundGradientFrom: isDarkMode ? '#333' : '#fff',
    backgroundGradientTo: isDarkMode ? '#333' : '#fff',
    decimalPlaces: 0,
    color: (opacity = 1) => `rgba(100, 161, 45, ${opacity})`,
    labelColor: (opacity = 1) => isDarkMode ? `rgba(255, 255, 255, ${opacity})` : `rgba(0, 0, 0, ${opacity})`,
    style: {
      borderRadius: 16,
    },
    propsForDots: {
      r: '6',
      strokeWidth: '2',
      stroke: color,
    },
  };

  return (
    <View style={{ marginVertical: 10 }}>
      <LineChart
        data={data}
        width={screenWidth - 40}
        height={220}
        chartConfig={chartConfig}
        bezier
        style={{
          marginVertical: 8,
          borderRadius: 16,
        }}
      />
    </View>
  );
};

export const BarChartComponent = ({ data, title, color = '#64a12d' }) => {
  const { isDarkMode } = useTheme();
  
  const chartConfig = {
    backgroundColor: isDarkMode ? '#333' : '#fff',
    backgroundGradientFrom: isDarkMode ? '#333' : '#fff',
    backgroundGradientTo: isDarkMode ? '#333' : '#fff',
    decimalPlaces: 0,
    color: (opacity = 1) => `rgba(100, 161, 45, ${opacity})`,
    labelColor: (opacity = 1) => isDarkMode ? `rgba(255, 255, 255, ${opacity})` : `rgba(0, 0, 0, ${opacity})`,
    style: {
      borderRadius: 16,
    },
  };

  return (
    <View style={{ marginVertical: 10 }}>
      <BarChart
        data={data}
        width={screenWidth - 40}
        height={220}
        chartConfig={chartConfig}
        style={{
          marginVertical: 8,
          borderRadius: 16,
        }}
        fromZero
      />
    </View>
  );
};

export const PieChartComponent = ({ data, title }) => {
  const { isDarkMode } = useTheme();
  
  const chartConfig = {
    color: (opacity = 1) => `rgba(100, 161, 45, ${opacity})`,
    labelColor: (opacity = 1) => isDarkMode ? `rgba(255, 255, 255, ${opacity})` : `rgba(0, 0, 0, ${opacity})`,
  };

  return (
    <View style={{ marginVertical: 10 }}>
      <PieChart
        data={data}
        width={screenWidth - 40}
        height={220}
        chartConfig={chartConfig}
        accessor="value"
        backgroundColor="transparent"
        paddingLeft="15"
        absolute
      />
    </View>
  );
};

export const ProgressChartComponent = ({ data, title, color = '#64a12d' }) => {
  const { isDarkMode } = useTheme();
  
  const chartConfig = {
    backgroundColor: isDarkMode ? '#333' : '#fff',
    backgroundGradientFrom: isDarkMode ? '#333' : '#fff',
    backgroundGradientTo: isDarkMode ? '#333' : '#fff',
    decimalPlaces: 0,
    color: (opacity = 1) => `rgba(100, 161, 45, ${opacity})`,
    labelColor: (opacity = 1) => isDarkMode ? `rgba(255, 255, 255, ${opacity})` : `rgba(0, 0, 0, ${opacity})`,
    style: {
      borderRadius: 16,
    },
  };

  return (
    <View style={{ marginVertical: 10 }}>
      <ProgressChart
        data={data}
        width={screenWidth - 40}
        height={220}
        chartConfig={chartConfig}
        style={{
          marginVertical: 8,
          borderRadius: 16,
        }}
      />
    </View>
  );
};