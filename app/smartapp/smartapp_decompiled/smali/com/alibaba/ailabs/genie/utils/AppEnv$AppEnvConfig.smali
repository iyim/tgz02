.class public final Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;
.super Ljava/lang/Object;
.source "AppEnv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/utils/AppEnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppEnvConfig"
.end annotation


# instance fields
.field private appKey:Ljava/lang/String;

.field private authCode:Ljava/lang/String;

.field private channel:Ljava/lang/String;

.field private envType:I

.field private ignoreSysDebug:Z

.field private isDebug:Z

.field private preEnvIndex:I

.field private utdid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->isDebug:Z

    const-string v0, ""

    .line 148
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->appKey:Ljava/lang/String;

    const/4 v1, 0x0

    .line 149
    iput v1, p0, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->envType:I

    .line 150
    iput v1, p0, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->preEnvIndex:I

    .line 151
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->channel:Ljava/lang/String;

    .line 152
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->authCode:Ljava/lang/String;

    .line 153
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->utdid:Ljava/lang/String;

    .line 154
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->ignoreSysDebug:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;)I
    .locals 0

    .line 146
    iget p0, p0, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->envType:I

    return p0
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;I)I
    .locals 0

    .line 146
    iput p1, p0, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->envType:I

    return p1
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;)I
    .locals 0

    .line 146
    iget p0, p0, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->preEnvIndex:I

    return p0
.end method

.method static synthetic access$102(Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;I)I
    .locals 0

    .line 146
    iput p1, p0, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->preEnvIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;)Z
    .locals 0

    .line 146
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->ignoreSysDebug:Z

    return p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;)Ljava/lang/String;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->appKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;)Ljava/lang/String;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->channel:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;)Z
    .locals 0

    .line 146
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->isDebug:Z

    return p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;)Ljava/lang/String;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->authCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;)Ljava/lang/String;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->utdid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->utdid:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public appKey(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->appKey:Ljava/lang/String;

    return-object p0
.end method

.method public authCode(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->authCode:Ljava/lang/String;

    return-object p0
.end method

.method public channel(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->channel:Ljava/lang/String;

    return-object p0
.end method

.method public envType(I)Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;
    .locals 0

    .line 190
    iput p1, p0, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->envType:I

    return-object p0
.end method

.method public ignoreSysLogCfg(Z)Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;
    .locals 0

    .line 185
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->ignoreSysDebug:Z

    return-object p0
.end method

.method public isDebug(Z)Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;
    .locals 0

    .line 170
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->isDebug:Z

    return-object p0
.end method

.method public logTag(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;
    .locals 0

    .line 175
    sput-object p1, Lcom/alibaba/ailabs/genie/utils/AppEnv;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public preEnvIndex(I)Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;
    .locals 0

    .line 195
    iput p1, p0, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->preEnvIndex:I

    return-object p0
.end method
