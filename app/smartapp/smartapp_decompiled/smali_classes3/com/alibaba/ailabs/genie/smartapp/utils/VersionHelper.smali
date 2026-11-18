.class public Lcom/alibaba/ailabs/genie/smartapp/utils/VersionHelper;
.super Ljava/lang/Object;
.source "VersionHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getVersionNameByPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 10
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 14
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/BuildConfig;->NAME_MAP:Ljava/util/Map;

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VersionHelper.getVersionNameByPackageName, versionMap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, "null"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VersionHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_a

    .line 16
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const-string v2, "com.alibaba.ailabs.genie.assistant"

    .line 21
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p0, "com.alibaba.ailabs.genie:smartapp_agis"

    goto :goto_1

    :cond_3
    const-string v2, "com.alibaba.ailabs.genie.contact"

    .line 23
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string p0, "com.alibaba.ailabs.genie:smartapp_contacts"

    goto :goto_1

    :cond_4
    const-string v2, "com.alibaba.ailabs.genie.launcher"

    .line 25
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string p0, "com.alibaba.ailabs.genie:smartapp_launcher"

    goto :goto_1

    :cond_5
    const-string v2, "com.alibaba.ailabs.genie.musicplayer"

    .line 27
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string p0, "com.alibaba.ailabs.genie:smartapp_musicplayer"

    goto :goto_1

    :cond_6
    const-string v2, "com.alibaba.ailabs.genie.shopping"

    .line 29
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string p0, "com.alibaba.ailabs.genie:smartapp_shopping"

    goto :goto_1

    :cond_7
    const-string v2, "com.alibaba.ailabs.basedomain"

    .line 31
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string p0, "com.alibaba.ailabs.genie:smartapp_basedomain"

    .line 35
    :cond_8
    :goto_1
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_9

    return-object v1

    .line 39
    :cond_9
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method
