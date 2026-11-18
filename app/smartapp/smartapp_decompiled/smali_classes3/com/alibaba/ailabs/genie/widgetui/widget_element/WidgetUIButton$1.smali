.class synthetic Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton$1;
.super Ljava/lang/Object;
.source "WidgetUIButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$alibaba$ailabs$genie$widgetui$widget_enum$WidgetUIButtonStyle:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 93
    invoke-static {}, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;->values()[Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton$1;->$SwitchMap$com$alibaba$ailabs$genie$widgetui$widget_enum$WidgetUIButtonStyle:[I

    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton$1;->$SwitchMap$com$alibaba$ailabs$genie$widgetui$widget_enum$WidgetUIButtonStyle:[I

    sget-object v1, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;->NORMAL:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton$1;->$SwitchMap$com$alibaba$ailabs$genie$widgetui$widget_enum$WidgetUIButtonStyle:[I

    sget-object v1, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;->ACTIVE:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton$1;->$SwitchMap$com$alibaba$ailabs$genie$widgetui$widget_enum$WidgetUIButtonStyle:[I

    sget-object v1, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;->ALERT:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
