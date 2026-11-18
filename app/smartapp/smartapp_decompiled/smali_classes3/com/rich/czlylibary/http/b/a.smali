.class public abstract Lcom/rich/czlylibary/http/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/rich/czlylibary/http/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/rich/czlylibary/http/b/b<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public a()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public a(Lcom/rich/czlylibary/http/model/Progress;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public a(Lcom/rich/czlylibary/http/model/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/czlylibary/http/model/a<",
            "TT;>;)V"
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public a(Lcom/rich/czlylibary/http/request/base/Request;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/czlylibary/http/request/base/Request<",
            "TT;+",
            "Lcom/rich/czlylibary/http/request/base/Request;",
            ">;)V"
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public b(Lcom/rich/czlylibary/http/model/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/czlylibary/http/model/a<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/rich/czlylibary/http/model/a;->d()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lcom/rich/czlylibary/b/j;->a(Ljava/lang/Throwable;)V

    return-void
.end method
