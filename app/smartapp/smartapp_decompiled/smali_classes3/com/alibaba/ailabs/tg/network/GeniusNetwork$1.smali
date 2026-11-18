.class synthetic Lcom/alibaba/ailabs/tg/network/GeniusNetwork$1;
.super Ljava/lang/Object;
.source "GeniusNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/tg/network/GeniusNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$alibaba$ailabs$tg$network$ServiceStyle:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/ServiceStyle;->values()[Lcom/alibaba/ailabs/tg/network/ServiceStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/alibaba/ailabs/tg/network/GeniusNetwork$1;->$SwitchMap$com$alibaba$ailabs$tg$network$ServiceStyle:[I

    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/tg/network/GeniusNetwork$1;->$SwitchMap$com$alibaba$ailabs$tg$network$ServiceStyle:[I

    sget-object v1, Lcom/alibaba/ailabs/tg/network/ServiceStyle;->MTOP:Lcom/alibaba/ailabs/tg/network/ServiceStyle;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/tg/network/ServiceStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/alibaba/ailabs/tg/network/GeniusNetwork$1;->$SwitchMap$com$alibaba$ailabs$tg$network$ServiceStyle:[I

    sget-object v1, Lcom/alibaba/ailabs/tg/network/ServiceStyle;->REST:Lcom/alibaba/ailabs/tg/network/ServiceStyle;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/tg/network/ServiceStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
