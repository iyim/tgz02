.class public Lcom/taobao/phenix/cache/LruNode;
.super Ljava/lang/Object;
.source "LruNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public isColdNode:Z

.field public isPreEvicted:Z

.field public key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public next:Lcom/taobao/phenix/cache/LruNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/phenix/cache/LruNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public prev:Lcom/taobao/phenix/cache/LruNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/phenix/cache/LruNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public size:I

.field public unlinked:Z

.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public visitCount:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/phenix/cache/LruNode;->reset(Ljava/lang/Object;Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public insertBefore(Lcom/taobao/phenix/cache/LruNode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/phenix/cache/LruNode<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/taobao/phenix/cache/LruNode;->prev:Lcom/taobao/phenix/cache/LruNode;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 21
    iget-object v1, p0, Lcom/taobao/phenix/cache/LruNode;->next:Lcom/taobao/phenix/cache/LruNode;

    iput-object v1, v0, Lcom/taobao/phenix/cache/LruNode;->next:Lcom/taobao/phenix/cache/LruNode;

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/taobao/phenix/cache/LruNode;->next:Lcom/taobao/phenix/cache/LruNode;

    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    .line 24
    iget-object v1, p0, Lcom/taobao/phenix/cache/LruNode;->prev:Lcom/taobao/phenix/cache/LruNode;

    iput-object v1, v0, Lcom/taobao/phenix/cache/LruNode;->prev:Lcom/taobao/phenix/cache/LruNode;

    .line 26
    :cond_1
    iput-object p1, p0, Lcom/taobao/phenix/cache/LruNode;->next:Lcom/taobao/phenix/cache/LruNode;

    .line 27
    iget-object v0, p1, Lcom/taobao/phenix/cache/LruNode;->prev:Lcom/taobao/phenix/cache/LruNode;

    if-eqz v0, :cond_2

    .line 28
    iput-object p0, v0, Lcom/taobao/phenix/cache/LruNode;->next:Lcom/taobao/phenix/cache/LruNode;

    .line 30
    :cond_2
    iget-object v0, p1, Lcom/taobao/phenix/cache/LruNode;->prev:Lcom/taobao/phenix/cache/LruNode;

    iput-object v0, p0, Lcom/taobao/phenix/cache/LruNode;->prev:Lcom/taobao/phenix/cache/LruNode;

    .line 31
    iput-object p0, p1, Lcom/taobao/phenix/cache/LruNode;->prev:Lcom/taobao/phenix/cache/LruNode;

    return-void
.end method

.method public reset(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/taobao/phenix/cache/LruNode;->key:Ljava/lang/Object;

    .line 36
    iput-object p2, p0, Lcom/taobao/phenix/cache/LruNode;->value:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 37
    iput p1, p0, Lcom/taobao/phenix/cache/LruNode;->visitCount:I

    .line 38
    iput p3, p0, Lcom/taobao/phenix/cache/LruNode;->size:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LruNode@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "[key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/phenix/cache/LruNode;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/phenix/cache/LruNode;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", visitCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/phenix/cache/LruNode;->visitCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/phenix/cache/LruNode;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isColdNode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/taobao/phenix/cache/LruNode;->isColdNode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", unlinked:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/taobao/phenix/cache/LruNode;->unlinked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unlink()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/taobao/phenix/cache/LruNode;->next:Lcom/taobao/phenix/cache/LruNode;

    if-eqz v0, :cond_0

    .line 43
    iget-object v1, p0, Lcom/taobao/phenix/cache/LruNode;->prev:Lcom/taobao/phenix/cache/LruNode;

    iput-object v1, v0, Lcom/taobao/phenix/cache/LruNode;->prev:Lcom/taobao/phenix/cache/LruNode;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/taobao/phenix/cache/LruNode;->prev:Lcom/taobao/phenix/cache/LruNode;

    if-eqz v0, :cond_1

    .line 46
    iget-object v1, p0, Lcom/taobao/phenix/cache/LruNode;->next:Lcom/taobao/phenix/cache/LruNode;

    iput-object v1, v0, Lcom/taobao/phenix/cache/LruNode;->next:Lcom/taobao/phenix/cache/LruNode;

    :cond_1
    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/taobao/phenix/cache/LruNode;->prev:Lcom/taobao/phenix/cache/LruNode;

    .line 49
    iput-object v0, p0, Lcom/taobao/phenix/cache/LruNode;->next:Lcom/taobao/phenix/cache/LruNode;

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/taobao/phenix/cache/LruNode;->unlinked:Z

    return-void
.end method
