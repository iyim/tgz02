.class synthetic Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar$1;
.super Ljava/lang/Object;
.source "WidgetUINavigationBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$alibaba$ailabs$genie$widgetui$widget_enum$WidgetUIRightOperationType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 158
    invoke-static {}, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;->values()[Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar$1;->$SwitchMap$com$alibaba$ailabs$genie$widgetui$widget_enum$WidgetUIRightOperationType:[I

    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar$1;->$SwitchMap$com$alibaba$ailabs$genie$widgetui$widget_enum$WidgetUIRightOperationType:[I

    sget-object v1, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;->NORMAL:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar$1;->$SwitchMap$com$alibaba$ailabs$genie$widgetui$widget_enum$WidgetUIRightOperationType:[I

    sget-object v1, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;->SINGLE:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar$1;->$SwitchMap$com$alibaba$ailabs$genie$widgetui$widget_enum$WidgetUIRightOperationType:[I

    sget-object v1, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;->MULTI:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
