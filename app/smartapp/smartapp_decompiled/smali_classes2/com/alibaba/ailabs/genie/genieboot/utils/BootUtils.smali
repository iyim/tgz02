.class public Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;
.super Ljava/lang/Object;
.source "BootUtils.java"


# static fields
.field private static final BOOT_VIDEO_PROPERITY:Ljava/lang/String; = "persist.custom.bootvideo"

.field private static final CHILD_MODE_SWICH_PROPERITY:Ljava/lang/String; = "persist.sys.is.child.mode"

.field private static final SHUTDOWN_VIDEO_PROPERITY:Ljava/lang/String; = "persist.custom.shutvideo"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static calcTimeoutTime(JJJ)J
    .locals 4

    const-string v0, "BootApp"

    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-lez v3, :cond_4

    cmp-long v3, p0, v1

    if-ltz v3, :cond_4

    cmp-long v3, p2, p0

    if-gez v3, :cond_0

    goto :goto_1

    .line 199
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->isBootAnimFinished()Z

    move-result v3

    if-eqz v3, :cond_3

    cmp-long v3, p0, v1

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    sub-long/2addr p2, p0

    cmp-long p0, p2, p4

    if-ltz p0, :cond_2

    const-string p0, "calcTimeoutTime overtime "

    .line 205
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_2
    sub-long/2addr p4, p2

    .line 210
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "calcTimeoutTime difftime  "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p4

    .line 200
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "calcTimeoutTime settingtime "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p4

    :cond_4
    :goto_1
    const-string p0, "calcTimeoutTime 0"

    .line 194
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1
.end method

.method public static goHomeActivityAndSetProperties()V
    .locals 1

    .line 53
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->isChildMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->jumpAndSetAdultHome()V

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->jumpAndSetChildHome()V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static isBootAnimFinished()Z
    .locals 2

    const-string v0, "init.svc.bootanim"

    .line 215
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/SystemPropertiesUtil;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "stopped"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isBootCompleted()Z
    .locals 2

    const-string v0, "sys.boot_completed"

    .line 243
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/SystemPropertiesUtil;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isChildMode()Z
    .locals 2

    const-string v0, "persist.sys.is.child.mode"

    .line 35
    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/common/CommUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 40
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isJumpPackageInstalled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 219
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 223
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 225
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    return v2

    .line 231
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    .line 235
    :cond_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 236
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p2, 0x10000

    .line 237
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    .line 238
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "resolveInfo is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BootApp"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static jumpAndSetAdultHome()V
    .locals 3

    const-string v0, "com.alibaba.ailabs.genie.launcher"

    .line 64
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->setHomeSysProp(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->hasHomeProp()Z

    move-result v0

    const-string v1, "BootApp"

    if-nez v0, :cond_0

    const-string v0, "ERROR no adult home property"

    .line 66
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/BootApplication;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "genie://com.alibaba.ailabs.genie.launcher/adulthomepage"

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->startActivity(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 69
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->startHomeActivity()V

    :goto_0
    const-string v0, "goHomeActivity: start adult home"

    .line 71
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static jumpAndSetChildHome()V
    .locals 3

    const-string v0, "com.alibaba.ailabs.genie.children"

    .line 78
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->setHomeSysProp(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->hasHomeProp()Z

    move-result v0

    const-string v1, "BootApp"

    if-nez v0, :cond_0

    const-string v0, "ERROR no child home property"

    .line 80
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/BootApplication;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "genie://com.alibaba.ailabs.genie.childrenmodel/home"

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->startActivity(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 83
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->startHomeActivity()V

    :goto_0
    const-string v0, "goHomeActivity: start child"

    .line 85
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setBootVideoValues(Ljava/lang/String;)V
    .locals 1

    const-string v0, "persist.custom.bootvideo"

    .line 103
    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setShutdownVideoValues(Ljava/lang/String;)V
    .locals 1

    const-string v0, "persist.custom.shutvideo"

    .line 114
    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static startHomeActivity()V
    .locals 3

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.HOME"

    .line 90
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10200000

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 93
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/BootApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static updateChildModeByOnLineMode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 135
    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->updateModeOnLine(Landroid/content/Context;)V

    return-void

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateChildModeByOnLineMode mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BootApp"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "kidMode"

    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 142
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->setChildModeSelf(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_1
    const-string v0, "default"

    .line 143
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    .line 144
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->setChildModeSelf(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_2
    const-string v0, "followLast"

    .line 145
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "persist.sys.is.child.mode"

    .line 146
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getBooleanSystemProperties(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->setChildModeSelf(Landroid/content/Context;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static updateChildModeOffLine(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 155
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateChildModeOffLine mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BootApp"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "kidMode"

    .line 160
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    .line 161
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->updateSysPro(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "default"

    .line 162
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    .line 163
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->updateSysPro(Z)V

    goto :goto_0

    :cond_2
    const-string v0, "followLast"

    .line 164
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "persist.sys.is.child.mode"

    .line 165
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getBooleanSystemProperties(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->updateSysPro(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static updateChildModeOnlyOffLine()V
    .locals 2

    const-string v0, "persist.sys.is.child.mode"

    const-string v1, "1"

    .line 178
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static updateModeOnLine(Landroid/content/Context;)V
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 119
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->getChildModeSettingBean(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    move-result-object v0

    const-string v1, "BootApp"

    if-eqz v0, :cond_1

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateModeOnLine mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->isEnable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "kidMode"

    goto :goto_0

    :cond_0
    const-string v0, "default"

    :goto_0
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->updateChildModeByOnLineMode(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "updateModeOnLine mode FLLOW_LAST_MODE"

    .line 124
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "followLast"

    .line 125
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->updateChildModeByOnLineMode(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static updateSysPro(Z)V
    .locals 2

    .line 170
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.is.child.mode"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string p0, "com.alibaba.ailabs.genie.children"

    goto :goto_0

    :cond_0
    const-string p0, "com.alibaba.ailabs.genie.launcher"

    .line 171
    :goto_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->setHomeSysProp(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
