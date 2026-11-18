.class synthetic Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader$1;
.super Ljava/lang/Object;
.source "ClassicsHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$alibaba$ailabs$genie$message$refresh$constant$RefreshState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 257
    invoke-static {}, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->values()[Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader$1;->$SwitchMap$com$alibaba$ailabs$genie$message$refresh$constant$RefreshState:[I

    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader$1;->$SwitchMap$com$alibaba$ailabs$genie$message$refresh$constant$RefreshState:[I

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->None:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader$1;->$SwitchMap$com$alibaba$ailabs$genie$message$refresh$constant$RefreshState:[I

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullDownToRefresh:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader$1;->$SwitchMap$com$alibaba$ailabs$genie$message$refresh$constant$RefreshState:[I

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Refreshing:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader$1;->$SwitchMap$com$alibaba$ailabs$genie$message$refresh$constant$RefreshState:[I

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->RefreshReleased:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader$1;->$SwitchMap$com$alibaba$ailabs$genie$message$refresh$constant$RefreshState:[I

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->ReleaseToRefresh:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/ClassicsHeader$1;->$SwitchMap$com$alibaba$ailabs$genie$message$refresh$constant$RefreshState:[I

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Loading:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
