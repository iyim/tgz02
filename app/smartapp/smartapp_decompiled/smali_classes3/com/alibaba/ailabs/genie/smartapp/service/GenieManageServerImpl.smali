.class public Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerImpl;
.super Lcom/alibaba/ailabs/genie/service/IGenieManageInterface$Stub;
.source "GenieManageServerImpl.java"


# static fields
.field private static final ourInstance:Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerImpl;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerImpl;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerImpl;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerImpl;->ourInstance:Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerImpl;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/service/IGenieManageInterface$Stub;-><init>()V

    .line 26
    const-class v0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerImpl;
    .locals 1

    .line 31
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerImpl;->ourInstance:Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerImpl;

    return-object v0
.end method


# virtual methods
.method public getBundleVersion()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "."

    const-string v1, ":"

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 66
    sget-object v3, Lcom/alibaba/ailabs/genie/smartapp/BuildConfig;->NAME_MAP:Ljava/util/Map;

    .line 67
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "smartappBundleVersions="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    const-string v6, "null"

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_9

    .line 68
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_3

    .line 72
    :cond_1
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 74
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 75
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    if-eqz v4, :cond_2

    .line 76
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 77
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 78
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 80
    iget-object v6, p0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "one bundle groupid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "; version="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .line 82
    :try_start_0
    invoke-virtual {v5, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 83
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.alibaba.ailabs.genie"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 84
    new-instance v6, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;

    invoke-direct {v6}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;-><init>()V

    const-string v7, ""

    .line 86
    invoke-virtual {v4, v0, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 88
    iget-object v8, p0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "one bundle groupid,ver:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 92
    invoke-virtual {v5, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->setAppName(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->setPackageName(Ljava/lang/String;)V

    const-string v5, "com.alibaba.ailabs.genie.smartapp_agis"

    .line 96
    invoke-virtual {v6}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "com.alibaba.ailabs.genie.assistant"

    .line 97
    invoke-virtual {v6, v5}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->setPackageName(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v6, v7}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->setVersionCode(I)V

    .line 99
    invoke-virtual {v6, v4}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->setVersionName(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v5, "com.alibaba.ailabs.genie.smartapp_contacts"

    .line 100
    invoke-virtual {v6}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "com.alibaba.ailabs.genie.contacts"

    .line 101
    invoke-virtual {v6, v5}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->setPackageName(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v6, v7}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->setVersionCode(I)V

    .line 103
    invoke-virtual {v6, v4}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->setVersionName(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v5, "com.alibaba.ailabs.genie.smartapp_musicplayer"

    .line 104
    invoke-virtual {v6}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "com.alibaba.ailabs.genie.musicplayer"

    .line 105
    invoke-virtual {v6, v5}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->setPackageName(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v6, v7}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->setVersionCode(I)V

    .line 107
    invoke-virtual {v6, v4}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->setVersionName(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v5, "com.alibaba.ailabs.genie.smartapp_shopping"

    .line 108
    invoke-virtual {v6}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v4, "com.alibaba.ailabs.genie.shopping"

    .line 109
    invoke-virtual {v6, v4}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->setPackageName(Ljava/lang/String;)V

    const/16 v4, 0x27d5

    .line 110
    invoke-virtual {v6, v4}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->setVersionCode(I)V

    const-string v4, "1.0.1.97"

    .line 111
    invoke-virtual {v6, v4}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->setVersionName(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string v5, "com.alibaba.ailabs.genie.smartapp_basedomain"

    .line 112
    invoke-virtual {v6}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v4, "com.alibaba.ailabs.basedomain"

    .line 113
    invoke-virtual {v6, v4}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->setPackageName(Ljava/lang/String;)V

    const v4, 0x9ce0

    .line 115
    invoke-virtual {v6, v4}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->setVersionCode(I)V

    const-string v4, "4.0.1.60"

    .line 116
    invoke-virtual {v6, v4}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->setVersionName(Ljava/lang/String;)V

    goto :goto_2

    .line 118
    :cond_7
    invoke-virtual {v6, v7}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->setVersionCode(I)V

    .line 119
    invoke-virtual {v6, v4}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->setVersionName(Ljava/lang/String;)V

    .line 122
    :goto_2
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v4

    .line 125
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :cond_8
    return-object v2

    :cond_9
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public judgeContainsStr(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ".*[a-zA-Z]+.*"

    .line 142
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 143
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method public killProcess(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.alibaba.ailabs.genie.smartapp:launcher"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.alibaba.ailabs.genie.smartapp:core"

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.alibaba.ailabs.genie.smartapp"

    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "other kill process, processName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.alibaba.ailabs.genie.smartapp:music"

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->getApplication()Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string v1, "ailabs"

    const/16 v2, 0x9

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    :cond_0
    :goto_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->getApplication()Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/misc/ProcessUtil;->getPidFromProcessName(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 55
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "other kill process, pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p1, :cond_1

    .line 57
    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    :cond_1
    return-void
.end method
