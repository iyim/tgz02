.class public Lcom/uc/base/net/util/AppNetworkDelegate;
.super Ljava/lang/Object;
.source "AppNetworkDelegate.java"


# static fields
.field private static sNetworkCheckDelegate:Lcom/uc/base/net/util/NetworkCheckDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static isNetworkConnected()Z
    .locals 1

    .line 12
    sget-object v0, Lcom/uc/base/net/util/AppNetworkDelegate;->sNetworkCheckDelegate:Lcom/uc/base/net/util/NetworkCheckDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 15
    :cond_0
    invoke-interface {v0}, Lcom/uc/base/net/util/NetworkCheckDelegate;->isNetworkConnected()Z

    move-result v0

    return v0
.end method

.method public static setNetworkCheckDelegate(Lcom/uc/base/net/util/NetworkCheckDelegate;)V
    .locals 0

    .line 8
    sput-object p0, Lcom/uc/base/net/util/AppNetworkDelegate;->sNetworkCheckDelegate:Lcom/uc/base/net/util/NetworkCheckDelegate;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
