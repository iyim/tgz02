.class public Lcom/alipay/mobile/verifyidentity/log/VerifyBehavorLogger;
.super Ljava/lang/Object;
.source "VerifyBehavorLogger.java"


# static fields
.field public static final LOG_BIZ_TYPE:Ljava/lang/String; = "VerifyIdentity"

.field public static final LOG_BIZ_TYPE_KEY:Ljava/lang/String; = "VerifyIdentityKey"

.field public static final LOG_P_SUB_TYPE:Ljava/lang/String; = "VI_P"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hackbyte "

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 181
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavorLogger;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 184
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appName"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appVersion"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceType"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static a()Z
    .locals 2

    .line 171
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.eg.android.AlipayGphone"

    .line 172
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.eg.android.AlipayGphoneRC"

    .line 173
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static logBehavor(Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;Lcom/alipay/mobile/verifyidentity/log/VerifyBehavor;)V
    .locals 6

    if-nez p1, :cond_0

    const-string p0, "VerifyBehavorLogger"

    const-string p1, "verifyBehavor is null"

    .line 69
    invoke-static {p0, p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 90
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->getInstance()Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavor;->getUserCaseID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavor;->getParam1()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavor;->getParam2()Ljava/lang/String;

    move-result-object v3

    .line 92
    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavor;->getParam3()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavor;->getExtParams()Ljava/util/Map;

    move-result-object v5

    .line 90
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->verifyBehavior(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static logBehavor(Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 31
    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavorLogger;->logBehavor(Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static logBehavor(Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-string v9, "VerifyIdentity"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 39
    invoke-static/range {v0 .. v9}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavorLogger;->logBehavor(Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static logBehavor(Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 64
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->getInstance()Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    move-result-object v0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->verifyBehavior(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static logBehavorRightAway(Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 140
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 141
    invoke-interface {v5, p7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;->getDes()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p7, "behaviourId"

    invoke-interface {v5, p7, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "userCaseID"

    .line 149
    invoke-interface {v5, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "appId"

    .line 150
    invoke-interface {v5, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "seedId"

    .line 151
    invoke-interface {v5, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-static {v5}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavorLogger;->a(Ljava/util/Map;)V

    .line 167
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->getInstance()Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    move-result-object v0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->verifyBehavior(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
