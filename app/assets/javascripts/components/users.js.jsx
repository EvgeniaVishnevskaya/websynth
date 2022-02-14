var Users = createReactClass({
  propTypes: {
    users: PropTypes.array
  },

  render: function() {
    return (
      <React.Fragment>
        Users: {this.props.users}
      </React.Fragment>
    );
  }
});
