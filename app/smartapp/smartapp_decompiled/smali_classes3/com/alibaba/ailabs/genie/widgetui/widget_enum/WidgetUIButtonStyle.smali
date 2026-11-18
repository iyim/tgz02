.class public final enum Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;
.super Ljava/lang/Enum;
.source "WidgetUIButtonStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;

.field public static final enum ACTIVE:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;

.field public static final enum ALERT:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;

.field public static final enum NORMAL:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1, v1}, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;->NORMAL:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;

    new-instance v0, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;

    const/4 v2, 0x1

    const-string v3, "ACTIVE"

    invoke-direct {v0, v3, v2, v2}, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;->ACTIVE:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;

    new-instance v0, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;

    const/4 v3, 0x2

    const-string v4, "ALERT"

    invoke-direct {v0, v4, v3, v3}, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;->ALERT:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;

    const/4 v0, 0x3

    .line 3
    new-array v0, v0, [Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;

    sget-object v4, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;->NORMAL:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;

    aput-object v4, v0, v1

    sget-object v1, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;->ACTIVE:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;->ALERT:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;->$VALUES:[Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;->value:I

    .line 9
    iput p3, p0, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 21
    sget-object p0, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;->NORMAL:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;

    return-object p0

    .line 19
    :cond_0
    sget-object p0, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;->ALERT:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;

    return-object p0

    .line 17
    :cond_1
    sget-object p0, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;->ACTIVE:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;

    return-object p0

    .line 15
    :cond_2
    sget-object p0, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;->NORMAL:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;
    .locals 1

    .line 3
    const-class v0, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;
    .locals 1

    .line 3
    sget-object v0, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;->$VALUES:[Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;

    invoke-virtual {v0}, [Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;->value:I

    return v0
.end method
