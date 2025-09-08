import React from 'react';
import { View, Text, StyleSheet, TouchableOpacity, ScrollView } from 'react-native';

export default class ErrorBoundary extends React.Component {
  constructor(props) {
    super(props);
    this.state = { hasError: false, error: null, errorInfo: null };
  }

  static getDerivedStateFromError(error) {
    return { hasError: true, error };
  }

  componentDidCatch(error, errorInfo) {
    this.setState({ errorInfo });
    console.error('Global ErrorBoundary caught an error:', error, errorInfo);
  }

  handleReload = () => {
    this.setState({ hasError: false, error: null, errorInfo: null });
  };

  render() {
    if (this.state.hasError) {
      return (
        <View style={styles.container}>
          <Text style={styles.title}>Something went wrong</Text>
          <Text style={styles.subtitle}>An unexpected error occurred. You can continue using the app or reload.</Text>
          {this.state.error && (
            <Text style={styles.errorText}>{String(this.state.error?.message || this.state.error)}</Text>
          )}
          {!!this.state.errorInfo && (
            <ScrollView style={styles.stackContainer}>
              <Text style={styles.stack}>{this.state.errorInfo?.componentStack}</Text>
            </ScrollView>
          )}
          <TouchableOpacity onPress={this.handleReload} style={styles.button}>
            <Text style={styles.buttonText}>Reload</Text>
          </TouchableOpacity>
        </View>
      );
    }
    return this.props.children;
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 20,
    alignItems: 'center',
    justifyContent: 'center',
    backgroundColor: '#ffffff',
  },
  title: {
    fontSize: 20,
    fontWeight: '700',
    marginBottom: 8,
  },
  subtitle: {
    fontSize: 14,
    textAlign: 'center',
    opacity: 0.8,
    marginBottom: 12,
  },
  errorText: {
    color: '#E53935',
    fontSize: 13,
    marginBottom: 10,
    textAlign: 'center',
  },
  stackContainer: {
    maxHeight: 160,
    width: '100%',
    backgroundColor: '#f5f5f5',
    borderRadius: 8,
    padding: 8,
    marginBottom: 12,
  },
  stack: {
    fontSize: 12,
    color: '#333',
  },
  button: {
    backgroundColor: '#64a12d',
    paddingHorizontal: 16,
    paddingVertical: 10,
    borderRadius: 8,
  },
  buttonText: {
    color: '#fff',
    fontWeight: '600',
  },
});

