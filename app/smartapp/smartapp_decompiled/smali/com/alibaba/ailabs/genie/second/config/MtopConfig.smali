.class public final Lcom/alibaba/ailabs/genie/second/config/MtopConfig;
.super Ljava/lang/Object;
.source "MtopConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;
    }
.end annotation


# static fields
.field public static final MTOP_INDEX_DAILY:I = 0x2

.field public static final MTOP_INDEX_ONLINE:I = 0x0

.field public static final MTOP_INDEX_PRE:I = 0x1

.field public static final MTOP_PROJECT_STAGING_2:Ljava/lang/String; = "default-ide-project-staging2"

.field public static final MTOP_PROJECT_STAGING_8:Ljava/lang/String; = "default-ide-project-staging8"


# instance fields
.field private isAdapter:Z

.field private mAppVersion:Ljava/lang/String;

.field private mAuthCode:Ljava/lang/String;

.field private mEnvMode:Lmtopsdk/mtop/domain/EnvModeEnum;

.field private mInstanceId:Ljava/lang/String;

.field private mProjectStaging:Ljava/lang/String;

.field private mTtid:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->access$000(Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/second/config/MtopConfig;->mInstanceId:Ljava/lang/String;

    .line 35
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->access$100(Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;)Lmtopsdk/mtop/domain/EnvModeEnum;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/second/config/MtopConfig;->mEnvMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    .line 36
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->access$200(Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/second/config/MtopConfig;->mTtid:Ljava/lang/String;

    .line 37
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->access$300(Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/config/MtopConfig;->isAdapter:Z

    .line 38
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->access$400(Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/second/config/MtopConfig;->mAuthCode:Ljava/lang/String;

    .line 39
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->access$500(Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/config/MtopConfig;->mProjectStaging:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;Lcom/alibaba/ailabs/genie/second/config/MtopConfig$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig;-><init>(Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/config/MtopConfig;->mAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthCode()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/config/MtopConfig;->mAuthCode:Ljava/lang/String;

    return-object v0
.end method

.method public getEnvMode()Lmtopsdk/mtop/domain/EnvModeEnum;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/config/MtopConfig;->mEnvMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/config/MtopConfig;->mInstanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectStaging()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/config/MtopConfig;->mProjectStaging:Ljava/lang/String;

    return-object v0
.end method

.method public getTtid()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/config/MtopConfig;->mTtid:Ljava/lang/String;

    return-object v0
.end method

.method public isAdapter()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/config/MtopConfig;->isAdapter:Z

    return v0
.end method
