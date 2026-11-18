.class public Lb/n/a/b;
.super Lb/n/a/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/n/a/b$b;,
        Lb/n/a/b$a;
    }
.end annotation


# instance fields
.field public final a:Lb/m/h;

.field public final b:Lb/n/a/b$b;


# direct methods
.method public constructor <init>(Lb/m/h;Lb/m/u;)V
    .locals 4

    invoke-direct {p0}, Lb/n/a/a;-><init>()V

    iput-object p1, p0, Lb/n/a/b;->a:Lb/m/h;

    .line 1
    sget-object p1, Lb/n/a/b$b;->c:Lb/m/r;

    const-class v0, Lb/n/a/b$b;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-static {v2, v1}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p2, v1}, Lb/m/u;->a(Ljava/lang/String;)Lb/m/q;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of p2, p1, Lb/m/t;

    if-eqz p2, :cond_2

    check-cast p1, Lb/m/t;

    invoke-virtual {p1}, Lb/m/t;->a()V

    goto :goto_1

    :cond_0
    instance-of v2, p1, Lb/m/s;

    if-eqz v2, :cond_1

    check-cast p1, Lb/m/s;

    invoke-virtual {p1, v1, v0}, Lb/m/s;->a(Ljava/lang/String;Ljava/lang/Class;)Lb/m/q;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-interface {p1, v0}, Lb/m/r;->a(Ljava/lang/Class;)Lb/m/q;

    move-result-object p1

    :goto_0
    move-object v2, p1

    .line 4
    iget-object p1, p2, Lb/m/u;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/m/q;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lb/m/q;->b()V

    .line 5
    :cond_2
    :goto_1
    check-cast v2, Lb/n/a/b$b;

    .line 6
    iput-object v2, p0, Lb/n/a/b;->b:Lb/n/a/b$b;

    return-void

    .line 7
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/n/a/b;->a:Lb/m/h;

    invoke-static {v1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
