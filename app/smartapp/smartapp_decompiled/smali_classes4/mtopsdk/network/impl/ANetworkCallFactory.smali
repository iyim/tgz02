.class public Lmtopsdk/network/impl/ANetworkCallFactory;
.super Ljava/lang/Object;
.source "ANetworkCallFactory.java"

# interfaces
.implements Lmtopsdk/network/Call$Factory;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lmtopsdk/network/impl/ANetworkCallFactory;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public newCall(Lmtopsdk/network/domain/Request;)Lmtopsdk/network/Call;
    .locals 2

    .line 24
    new-instance v0, Lmtopsdk/network/impl/ANetworkCallImpl;

    iget-object v1, p0, Lmtopsdk/network/impl/ANetworkCallFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lmtopsdk/network/impl/ANetworkCallImpl;-><init>(Lmtopsdk/network/domain/Request;Landroid/content/Context;)V

    return-object v0
.end method
