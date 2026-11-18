.class public final Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;
.super Ljava/lang/Object;
.source "CrashReporterConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private appChannel:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private appKey:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private userNick:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;->appId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;->appKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;->appVersion:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;->appChannel:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;->userNick:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public appChannel(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;->appChannel:Ljava/lang/String;

    return-object p0
.end method

.method public appId(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;->appId:Ljava/lang/String;

    return-object p0
.end method

.method public appKey(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;->appKey:Ljava/lang/String;

    return-object p0
.end method

.method public appVersion(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;->appVersion:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig;
    .locals 2

    .line 89
    new-instance v0, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig;-><init>(Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$1;)V

    return-object v0
.end method

.method public userNick(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;->userNick:Ljava/lang/String;

    return-object p0
.end method
