.class public final Lcom/alibaba/ailabs/genie/second/config/UTConfig;
.super Ljava/lang/Object;
.source "UTConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;
    }
.end annotation


# instance fields
.field private mAppKey:Ljava/lang/String;

.field private mAuthCode:Ljava/lang/String;

.field private mChannel:Ljava/lang/String;

.field private mCrashHandlerDisable:Z

.field private mVersionCode:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->access$000(Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/config/UTConfig;->mCrashHandlerDisable:Z

    .line 15
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->access$100(Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/second/config/UTConfig;->mChannel:Ljava/lang/String;

    .line 16
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->access$200(Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/second/config/UTConfig;->mAppKey:Ljava/lang/String;

    .line 17
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->access$300(Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/second/config/UTConfig;->mVersionCode:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->access$400(Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/config/UTConfig;->mAuthCode:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;Lcom/alibaba/ailabs/genie/second/config/UTConfig$1;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/second/config/UTConfig;-><init>(Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/config/UTConfig;->mAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthCode()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/config/UTConfig;->mAuthCode:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/config/UTConfig;->mChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/config/UTConfig;->mVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method public isCrashHandlerDisable()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/config/UTConfig;->mCrashHandlerDisable:Z

    return v0
.end method
