.class public Lcom/alibaba/ailabs/genie/logger/bean/BasicEnvInfo;
.super Ljava/lang/Object;
.source "BasicEnvInfo.java"


# instance fields
.field private mConturyCode:Ljava/lang/String;

.field private mIpAddr:Ljava/lang/String;

.field private mLanguage:Ljava/lang/String;

.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/BasicEnvInfo;->mMap:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 44
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/logger/utils/NetworkUtils;->getIp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/logger/bean/BasicEnvInfo;->mIpAddr:Ljava/lang/String;

    .line 45
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/logger/bean/BasicEnvInfo;->mIpAddr:Ljava/lang/String;

    const-string v2, "ipaddr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/logger/bean/BasicEnvInfo;->mConturyCode:Ljava/lang/String;

    .line 48
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/logger/bean/BasicEnvInfo;->mConturyCode:Ljava/lang/String;

    const-string v1, "conturyCode"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/utils/CommonUtils;->getTimeZone()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/logger/bean/BasicEnvInfo;->mTimeZone:Ljava/lang/String;

    .line 51
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/logger/bean/BasicEnvInfo;->mTimeZone:Ljava/lang/String;

    const-string/jumbo v1, "timeZone"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/logger/bean/BasicEnvInfo;->mLanguage:Ljava/lang/String;

    .line 54
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/logger/bean/BasicEnvInfo;->mLanguage:Ljava/lang/String;

    const-string v1, "language"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getBasicEnvInfoMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/BasicEnvInfo;->mMap:Ljava/util/Map;

    return-object v0
.end method
