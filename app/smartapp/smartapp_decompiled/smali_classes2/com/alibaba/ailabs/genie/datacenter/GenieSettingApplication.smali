.class public Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;
.super Ljava/lang/Object;
.source "GenieSettingApplication.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/IBaseApplication;


# static fields
.field public static final TAG:Ljava/lang/String; = "GenieSettingApplication"


# instance fields
.field private mChildModeSettingBean:Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;->mChildModeSettingBean:Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    return-object p0
.end method

.method static synthetic access$102(Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;->mChildModeSettingBean:Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    return-object p1
.end method

.method static synthetic access$200(Landroid/content/Context;Z)V
    .locals 0

    .line 27
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;->notifyChangeChildMode(Landroid/content/Context;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private handleScreenOff(Landroid/content/Context;)V
    .locals 4

    .line 53
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->getScreenOffTimeout()I

    move-result v0

    const v1, 0xea60

    if-ne v0, v1, :cond_0

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleScreenOff"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; set to 10min"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GenieSettingApplication"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 56
    invoke-static {p1, v1, v0}, Lcom/alibaba/ailabs/childmode/Global;->updateScreenOffSettingToSystem(Landroid/content/Context;IZ)V

    :cond_0
    return-void
.end method

.method private static notifyChangeChildMode(Landroid/content/Context;Z)V
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyChangeChildMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieSettingApplication"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://com.alibaba.ailabs.childmode.provider/childMode"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?isOpened="

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 100
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    nop

    nop

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 104
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private registerGenieDataListener()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/GenieDataManager;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication$1;-><init>(Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->registerListener(Lcom/alibaba/ailabs/genie/data/GenieDataListener;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Application;)V
    .locals 3

    const-string v0, "GenieSettingApplication"

    const-string v1, "GenieSettingApplication init"

    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;->mContext:Landroid/content/Context;

    .line 37
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/childmode/Global;->setContext(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/childmode/Global;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/childmode/Global;

    .line 39
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->getChildModeSettingBean(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;->mChildModeSettingBean:Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    .line 40
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->getProtoVideoAutoTime(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/alibaba/ailabs/childmode/Global;->sProtoVideoAutoTime:I

    .line 41
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isDemo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;->mContext:Landroid/content/Context;

    sget v2, Lcom/alibaba/ailabs/childmode/Global;->sProtoVideoAutoTime:I

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/childmode/Global;->updateScreenOffTimeoutAndNotify(Landroid/content/Context;I)V

    :cond_0
    const-string v1, "GenieSettingApplication startDataCenterService"

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->startDataCenterService(Landroid/content/Context;)V

    .line 47
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;->registerGenieDataListener()V

    .line 49
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;->handleScreenOff(Landroid/content/Context;)V

    return-void
.end method
