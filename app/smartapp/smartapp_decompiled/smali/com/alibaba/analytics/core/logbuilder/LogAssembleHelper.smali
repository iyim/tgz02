.class public Lcom/alibaba/analytics/core/logbuilder/LogAssembleHelper;
.super Ljava/lang/Object;
.source "LogAssembleHelper.java"


# static fields
.field private static mUMID:Ljava/lang/String; = null

.field private static mUMIDGetSwitch:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getSecurityToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_2

    .line 14
    sget-boolean v0, Lcom/alibaba/analytics/core/logbuilder/LogAssembleHelper;->mUMIDGetSwitch:Z

    if-eqz v0, :cond_2

    :try_start_0
    const-string v0, "com.taobao.dp.DeviceSecuritySDK"

    .line 16
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 18
    new-array v3, v2, [Ljava/lang/Object;

    aput-object p0, v3, v1

    const-string p0, "getInstance"

    .line 20
    new-array v2, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v1

    invoke-static {v0, p0, v3, v2}, Lcom/alibaba/analytics/utils/ReflectUtils;->invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v0, "getSecurityToken"

    .line 23
    invoke-static {p0, v0}, Lcom/alibaba/analytics/utils/ReflectUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 26
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/alibaba/analytics/core/logbuilder/LogAssembleHelper;->mUMID:Ljava/lang/String;

    .line 28
    :cond_0
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 31
    :cond_1
    sput-boolean v1, Lcom/alibaba/analytics/core/logbuilder/LogAssembleHelper;->mUMIDGetSwitch:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
