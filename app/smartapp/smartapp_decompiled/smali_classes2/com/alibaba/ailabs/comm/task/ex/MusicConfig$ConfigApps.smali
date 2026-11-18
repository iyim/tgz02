.class public Lcom/alibaba/ailabs/comm/task/ex/MusicConfig$ConfigApps;
.super Ljava/lang/Object;
.source "MusicConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/comm/task/ex/MusicConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigApps"
.end annotation


# instance fields
.field private activitys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private packages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/MusicConfig$ConfigApps;->packages:Ljava/util/Set;

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/MusicConfig$ConfigApps;->activitys:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addActivity(Ljava/lang/String;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/MusicConfig$ConfigApps;->activitys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPackage(Ljava/lang/String;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/MusicConfig$ConfigApps;->packages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getActivitys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/MusicConfig$ConfigApps;->activitys:Ljava/util/Set;

    return-object v0
.end method

.method public getPackages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/MusicConfig$ConfigApps;->packages:Ljava/util/Set;

    return-object v0
.end method
