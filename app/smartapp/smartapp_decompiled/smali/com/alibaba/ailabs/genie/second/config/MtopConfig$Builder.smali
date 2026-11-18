.class public final Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;
.super Ljava/lang/Object;
.source "MtopConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/second/config/MtopConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private authCode:Ljava/lang/String;

.field private envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

.field private instanceId:Ljava/lang/String;

.field private isAdapter:Z

.field private projectStaging:Ljava/lang/String;

.field private ttid:Ljava/lang/String;

.field private versionCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmtopsdk/mtop/domain/EnvModeEnum;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lmtopsdk/mtop/domain/EnvModeEnum;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->isAdapter:Z

    .line 81
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->instanceId:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->instanceId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;)Lmtopsdk/mtop/domain/EnvModeEnum;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->ttid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->isAdapter:Z

    return p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->authCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->projectStaging:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public authCode(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->authCode:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/alibaba/ailabs/genie/second/config/MtopConfig;
    .locals 2

    .line 121
    new-instance v0, Lcom/alibaba/ailabs/genie/second/config/MtopConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig;-><init>(Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;Lcom/alibaba/ailabs/genie/second/config/MtopConfig$1;)V

    return-object v0
.end method

.method public envMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;
    .locals 0
    .param p1    # Lmtopsdk/mtop/domain/EnvModeEnum;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 91
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    return-object p0
.end method

.method public instanceId(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 86
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->instanceId:Ljava/lang/String;

    return-object p0
.end method

.method public isAdatepr(Z)Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;
    .locals 0

    .line 111
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->isAdapter:Z

    return-object p0
.end method

.method public projectStaging(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->projectStaging:Ljava/lang/String;

    return-object p0
.end method

.method public ttid(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->ttid:Ljava/lang/String;

    return-object p0
.end method

.method public versionCode(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->versionCode:Ljava/lang/String;

    return-object p0
.end method
