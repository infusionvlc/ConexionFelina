import React from "react";

import { storiesOf } from "@storybook/react";
import { action } from "@storybook/addon-actions";
import { linkTo } from "@storybook/addon-links";
import { Button } from "../../packs/ui-bundle";

storiesOf("Button", module)
  .add("Primary", () => <Button type="primary">Next</Button>)
  .add("Success", () => <Button type="success">Next</Button>)
  .add("Warning", () => <Button type="warning">Next</Button>)
  .add("Error", () => <Button type="error">Next</Button>)
  .add("Disabled", () => <Button type="disabled">Next</Button>)
  .add("Block Button", () => (
    <Button type="primary" block>
      Yes
    </Button>
  ))
  .add("Transparent Block Button", () => (
    <Button type="success" block transparent>
      Yes
    </Button>
  ));
