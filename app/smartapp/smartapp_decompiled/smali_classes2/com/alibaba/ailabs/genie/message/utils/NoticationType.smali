.class public final enum Lcom/alibaba/ailabs/genie/message/utils/NoticationType;
.super Ljava/lang/Enum;
.source "NoticationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/ailabs/genie/message/utils/NoticationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/ailabs/genie/message/utils/NoticationType;

.field public static final enum DOUBLE_LINES_TITLE:Lcom/alibaba/ailabs/genie/message/utils/NoticationType;

.field public static final enum SINGLE_LINE_TITLE:Lcom/alibaba/ailabs/genie/message/utils/NoticationType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 4
    new-instance v0, Lcom/alibaba/ailabs/genie/message/utils/NoticationType;

    const/4 v1, 0x0

    const-string v2, "SINGLE_LINE_TITLE"

    invoke-direct {v0, v2, v1, v1}, Lcom/alibaba/ailabs/genie/message/utils/NoticationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/utils/NoticationType;->SINGLE_LINE_TITLE:Lcom/alibaba/ailabs/genie/message/utils/NoticationType;

    new-instance v0, Lcom/alibaba/ailabs/genie/message/utils/NoticationType;

    const/4 v2, 0x1

    const-string v3, "DOUBLE_LINES_TITLE"

    invoke-direct {v0, v3, v2, v2}, Lcom/alibaba/ailabs/genie/message/utils/NoticationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/utils/NoticationType;->DOUBLE_LINES_TITLE:Lcom/alibaba/ailabs/genie/message/utils/NoticationType;

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Lcom/alibaba/ailabs/genie/message/utils/NoticationType;

    sget-object v3, Lcom/alibaba/ailabs/genie/message/utils/NoticationType;->SINGLE_LINE_TITLE:Lcom/alibaba/ailabs/genie/message/utils/NoticationType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/alibaba/ailabs/genie/message/utils/NoticationType;->DOUBLE_LINES_TITLE:Lcom/alibaba/ailabs/genie/message/utils/NoticationType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/ailabs/genie/message/utils/NoticationType;->$VALUES:[Lcom/alibaba/ailabs/genie/message/utils/NoticationType;

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
    iput p1, p0, Lcom/alibaba/ailabs/genie/message/utils/NoticationType;->value:I

    .line 9
    iput p3, p0, Lcom/alibaba/ailabs/genie/message/utils/NoticationType;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/alibaba/ailabs/genie/message/utils/NoticationType;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 19
    sget-object p0, Lcom/alibaba/ailabs/genie/message/utils/NoticationType;->SINGLE_LINE_TITLE:Lcom/alibaba/ailabs/genie/message/utils/NoticationType;

    return-object p0

    .line 17
    :cond_0
    sget-object p0, Lcom/alibaba/ailabs/genie/message/utils/NoticationType;->DOUBLE_LINES_TITLE:Lcom/alibaba/ailabs/genie/message/utils/NoticationType;

    return-object p0

    .line 15
    :cond_1
    sget-object p0, Lcom/alibaba/ailabs/genie/message/utils/NoticationType;->SINGLE_LINE_TITLE:Lcom/alibaba/ailabs/genie/message/utils/NoticationType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/message/utils/NoticationType;
    .locals 1

    .line 3
    const-class v0, Lcom/alibaba/ailabs/genie/message/utils/NoticationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/message/utils/NoticationType;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/ailabs/genie/message/utils/NoticationType;
    .locals 1

    .line 3
    sget-object v0, Lcom/alibaba/ailabs/genie/message/utils/NoticationType;->$VALUES:[Lcom/alibaba/ailabs/genie/message/utils/NoticationType;

    invoke-virtual {v0}, [Lcom/alibaba/ailabs/genie/message/utils/NoticationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/ailabs/genie/message/utils/NoticationType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/utils/NoticationType;->value:I

    return v0
.end method
