from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def JetSenseFacebook() -> Any:
    return (
        <Project image="facebook.png" link="">
            <Title>JetSense.AI Facebook Integration</Title>
            <Tech>(Professional) C# .NET Core 2.2</Tech>
            <Tech>AWS DynamoDB</Tech>
            <Tech>FB Graph API</Tech>
            <Tech>FB Messenger.</Tech>
            Setup an integration between Facebook and JetSense's chatbot services.
        </Project>
    )
