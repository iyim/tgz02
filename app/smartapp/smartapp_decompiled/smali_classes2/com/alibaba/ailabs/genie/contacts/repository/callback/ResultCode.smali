.class public Lcom/alibaba/ailabs/genie/contacts/repository/callback/ResultCode;
.super Ljava/lang/Object;
.source "ResultCode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/contacts/repository/callback/ResultCode$CheckVoipError;
    }
.end annotation


# static fields
.field public static final ANDROID_SYS_NETWORK:Ljava/lang/String; = "ANDROID_SYS_NETWORK_ERROR"

.field public static final ANDROID_SYS_NETWORK_ERROR:Ljava/lang/String; = "-200AEC10001"

.field public static final ANDROID_SYS_NO_NETWORK:Ljava/lang/String; = "-200AEC10000"

.field public static final SUCCESS:Ljava/lang/String; = "200"

.field public static final SUCCESS_0:Ljava/lang/String; = "0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static isNoNetWork(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "-200AEC10000"

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-200AEC10001"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ANDROID_SYS_NETWORK_ERROR"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
