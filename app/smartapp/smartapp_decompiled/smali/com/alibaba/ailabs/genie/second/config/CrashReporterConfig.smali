.class public Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig;
.super Ljava/lang/Object;
.source "CrashReporterConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;
    }
.end annotation


# instance fields
.field private mAppChannel:Ljava/lang/String;

.field private mAppId:Ljava/lang/String;

.field private mAppKey:Ljava/lang/String;

.field private mAppVersion:Ljava/lang/String;

.field private mUserNick:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;->access$000(Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig;->mAppId:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;->access$100(Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig;->mAppKey:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;->access$200(Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig;->mAppVersion:Ljava/lang/String;

    .line 16
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;->access$300(Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig;->mAppChannel:Ljava/lang/String;

    .line 17
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;->access$400(Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig;->mUserNick:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig;-><init>(Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAppChannel()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig;->mAppChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig;->mAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig;->mAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUserNick()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig;->mUserNick:Ljava/lang/String;

    return-object v0
.end method
