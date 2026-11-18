.class public Lanetwork/channel/http/HttpNetwork;
.super Lanetwork/channel/aidl/adapter/NetworkProxy;
.source "HttpNetwork.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "anet.HttpNetwork"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, v0}, Lanetwork/channel/aidl/adapter/NetworkProxy;-><init>(Landroid/content/Context;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
