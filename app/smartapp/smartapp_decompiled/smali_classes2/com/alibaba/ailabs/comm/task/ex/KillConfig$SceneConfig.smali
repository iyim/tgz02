.class public Lcom/alibaba/ailabs/comm/task/ex/KillConfig$SceneConfig;
.super Ljava/lang/Object;
.source "KillConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/comm/task/ex/KillConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SceneConfig"
.end annotation


# instance fields
.field private shortTimeApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stickyProcesss:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getShortTimeApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/KillConfig$SceneConfig;->shortTimeApps:Ljava/util/List;

    return-object v0
.end method

.method public getStickyProcesss()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/KillConfig$SceneConfig;->stickyProcesss:Ljava/util/List;

    return-object v0
.end method

.method public setShortTimeApps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/ex/KillConfig$SceneConfig;->shortTimeApps:Ljava/util/List;

    return-void
.end method

.method public setStickyProcesss(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/ex/KillConfig$SceneConfig;->stickyProcesss:Ljava/util/List;

    return-void
.end method
