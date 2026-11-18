.class synthetic Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$2;
.super Ljava/lang/Object;
.source "CircleTextProgressbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$alibaba$ailabs$genie$globalsearch$widgets$CircleTextProgressbar$ProgressType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 239
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;->values()[Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$2;->$SwitchMap$com$alibaba$ailabs$genie$globalsearch$widgets$CircleTextProgressbar$ProgressType:[I

    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$2;->$SwitchMap$com$alibaba$ailabs$genie$globalsearch$widgets$CircleTextProgressbar$ProgressType:[I

    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;->COUNT:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$2;->$SwitchMap$com$alibaba$ailabs$genie$globalsearch$widgets$CircleTextProgressbar$ProgressType:[I

    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;->COUNT_BACK:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
