.class public final Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;
.super Ljava/lang/Object;
.source "UTConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/second/config/UTConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAppKey:Ljava/lang/String;

.field private mAuthCode:Ljava/lang/String;

.field private mChannel:Ljava/lang/String;

.field private mCrashHandlerDisable:Z

.field private mVersionCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->mAppKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->mCrashHandlerDisable:Z

    return p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->mChannel:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->mAppKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->mVersionCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->mAuthCode:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public appKey(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->mAppKey:Ljava/lang/String;

    return-object p0
.end method

.method public authCode(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->mAuthCode:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/alibaba/ailabs/genie/second/config/UTConfig;
    .locals 2

    .line 79
    new-instance v0, Lcom/alibaba/ailabs/genie/second/config/UTConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/genie/second/config/UTConfig;-><init>(Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;Lcom/alibaba/ailabs/genie/second/config/UTConfig$1;)V

    return-object v0
.end method

.method public channel(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->mChannel:Ljava/lang/String;

    return-object p0
.end method

.method public crashHandlerDisable(Z)Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->mCrashHandlerDisable:Z

    return-object p0
.end method

.method public versionCode(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->mVersionCode:Ljava/lang/String;

    return-object p0
.end method
