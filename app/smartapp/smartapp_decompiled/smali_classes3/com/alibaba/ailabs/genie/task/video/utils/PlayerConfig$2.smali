.class final Lcom/alibaba/ailabs/genie/task/video/utils/PlayerConfig$2;
.super Ljava/util/HashSet;
.source "PlayerConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/task/video/utils/PlayerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const-string v0, "ykiot"

    .line 33
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/task/video/utils/PlayerConfig$2;->add(Ljava/lang/Object;)Z

    const-string v0, "yst"

    .line 34
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/task/video/utils/PlayerConfig$2;->add(Ljava/lang/Object;)Z

    const-string v0, "iqiyi"

    .line 35
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/task/video/utils/PlayerConfig$2;->add(Ljava/lang/Object;)Z

    const-string v0, "txvideo"

    .line 36
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/task/video/utils/PlayerConfig$2;->add(Ljava/lang/Object;)Z

    const-string v0, "mgtvapp"

    .line 37
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/task/video/utils/PlayerConfig$2;->add(Ljava/lang/Object;)Z

    return-void
.end method
