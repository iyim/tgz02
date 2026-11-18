.class public final enum Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;
.super Ljava/lang/Enum;
.source "WidgetUIRightOperationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;

.field public static final enum MULTI:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;

.field public static final enum NORMAL:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;

.field public static final enum SINGLE:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1}, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;->NORMAL:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;

    new-instance v0, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;

    const/4 v2, 0x1

    const-string v3, "SINGLE"

    invoke-direct {v0, v3, v2}, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;->SINGLE:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;

    new-instance v0, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;

    const/4 v3, 0x2

    const-string v4, "MULTI"

    invoke-direct {v0, v4, v3}, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;->MULTI:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;

    const/4 v0, 0x3

    .line 3
    new-array v0, v0, [Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;

    sget-object v4, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;->NORMAL:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;->SINGLE:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;->MULTI:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;->$VALUES:[Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;
    .locals 1

    .line 3
    const-class v0, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;
    .locals 1

    .line 3
    sget-object v0, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;->$VALUES:[Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;

    invoke-virtual {v0}, [Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;

    return-object v0
.end method
