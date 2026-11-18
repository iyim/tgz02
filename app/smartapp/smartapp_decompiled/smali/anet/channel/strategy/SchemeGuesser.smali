.class public Lanet/channel/strategy/SchemeGuesser;
.super Ljava/lang/Object;
.source "SchemeGuesser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/strategy/SchemeGuesser$holder;
    }
.end annotation


# instance fields
.field private enabled:Z

.field private final guessSchemeMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/SchemeGuesser;->guessSchemeMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lanet/channel/strategy/SchemeGuesser;->enabled:Z

    return-void
.end method

.method public static getInstance()Lanet/channel/strategy/SchemeGuesser;
    .locals 1

    .line 16
    sget-object v0, Lanet/channel/strategy/SchemeGuesser$holder;->instance:Lanet/channel/strategy/SchemeGuesser;

    return-object v0
.end method


# virtual methods
.method public guessScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 28
    iget-boolean v0, p0, Lanet/channel/strategy/SchemeGuesser;->enabled:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 32
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/SchemeGuesser;->guessSchemeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "https"

    .line 35
    iget-object v1, p0, Lanet/channel/strategy/SchemeGuesser;->guessSchemeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public onSslFail(Ljava/lang/String;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lanet/channel/strategy/SchemeGuesser;->guessSchemeMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "http"

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lanet/channel/strategy/SchemeGuesser;->enabled:Z

    return-void
.end method
