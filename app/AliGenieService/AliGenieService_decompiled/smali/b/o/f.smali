.class public Lb/o/f;
.super Lb/m/q;
.source ""


# static fields
.field public static final c:Lb/m/r;


# instance fields
.field public final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/util/UUID;",
            "Lb/m/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/o/f$a;

    invoke-direct {v0}, Lb/o/f$a;-><init>()V

    sput-object v0, Lb/o/f;->c:Lb/m/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb/m/q;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lb/o/f;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Lb/m/u;)Lb/o/f;
    .locals 5

    sget-object v0, Lb/o/f;->c:Lb/m/r;

    const-class v1, Lb/o/f;

    .line 1
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-static {v3, v2}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-virtual {p0, v2}, Lb/m/u;->a(Ljava/lang/String;)Lb/m/q;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    instance-of p0, v0, Lb/m/t;

    if-eqz p0, :cond_2

    check-cast v0, Lb/m/t;

    invoke-virtual {v0}, Lb/m/t;->a()V

    goto :goto_1

    :cond_0
    instance-of v3, v0, Lb/m/s;

    if-eqz v3, :cond_1

    check-cast v0, Lb/m/s;

    invoke-virtual {v0, v2, v1}, Lb/m/s;->a(Ljava/lang/String;Ljava/lang/Class;)Lb/m/q;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v0, v1}, Lb/m/r;->a(Ljava/lang/Class;)Lb/m/q;

    move-result-object v0

    :goto_0
    move-object v3, v0

    .line 3
    iget-object p0, p0, Lb/m/u;->a:Ljava/util/HashMap;

    invoke-virtual {p0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb/m/q;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lb/m/q;->b()V

    .line 4
    :cond_2
    :goto_1
    check-cast v3, Lb/o/f;

    return-object v3

    .line 5
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Ljava/util/UUID;)V
    .locals 1

    iget-object v0, p0, Lb/o/f;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/m/u;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb/m/u;->a()V

    :cond_0
    return-void
.end method

.method public b(Ljava/util/UUID;)Lb/m/u;
    .locals 2

    iget-object v0, p0, Lb/o/f;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/m/u;

    if-nez v0, :cond_0

    new-instance v0, Lb/m/u;

    invoke-direct {v0}, Lb/m/u;-><init>()V

    iget-object v1, p0, Lb/o/f;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lb/o/f;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/m/u;

    invoke-virtual {v1}, Lb/m/u;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/o/f;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NavControllerViewModel{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "} ViewModelStores ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/o/f;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
