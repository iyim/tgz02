.class public Lcom/alibaba/ailabs/genie/utils/SystemPropertiesUtil;
.super Ljava/lang/Object;
.source "SystemPropertiesUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemPropertiesUtil"

.field public static final TTS_TONE_PROP:Ljava/lang/String; = "persist.tts.tone"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 54
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x2

    .line 55
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 56
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    const-string p0, ""

    aput-object p0, v2, v7

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static getTTSToneProp()I
    .locals 2

    const-string v0, "persist.tts.tone"

    const/4 v1, 0x0

    .line 35
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getIntSystemProperties(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isChildMode()Z
    .locals 2

    const-string v0, "persist.sys.childMode"

    .line 43
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/SystemPropertiesUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 44
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isOpenCamera()Z
    .locals 2

    const-string v0, "persist.camera.camavailable"

    .line 48
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/SystemPropertiesUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 49
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static setTTSToneProp(I)V
    .locals 4

    const-string v0, "persist.tts.tone"

    const/4 v1, 0x0

    .line 24
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getIntSystemProperties(Ljava/lang/String;I)I

    move-result v1

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartCommand:Get old tone type persist.tts.tone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; new tone type="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemPropertiesUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static setTTSToneProp(Ljava/lang/String;)V
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.tts.tone new tone type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemPropertiesUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "persist.tts.tone"

    .line 31
    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
