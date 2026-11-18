.class public final enum Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;
.super Ljava/lang/Enum;
.source "CircleTextProgressbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProgressType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;

.field public static final enum COUNT:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;

.field public static final enum COUNT_BACK:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 378
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;

    const/4 v1, 0x0

    const-string v2, "COUNT"

    invoke-direct {v0, v2, v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;->COUNT:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;

    .line 383
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;

    const/4 v2, 0x1

    const-string v3, "COUNT_BACK"

    invoke-direct {v0, v3, v2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;->COUNT_BACK:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;

    const/4 v0, 0x2

    .line 374
    new-array v0, v0, [Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;

    sget-object v3, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;->COUNT:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;->COUNT_BACK:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;->$VALUES:[Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;

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

    .line 374
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;
    .locals 1

    .line 374
    const-class v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;
    .locals 1

    .line 374
    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;->$VALUES:[Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;

    invoke-virtual {v0}, [Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;

    return-object v0
.end method
