.class public Lb/h/h/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/h/h/c$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/h/h/b;->a(Landroid/content/Context;Lb/h/h/a;Lb/h/d/b/e;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/h/h/c$d<",
        "Lb/h/h/b$g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lb/h/d/b/e;

.field public final synthetic b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lb/h/d/b/e;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lb/h/h/b$b;->a:Lb/h/d/b/e;

    iput-object p2, p0, Lb/h/h/b$b;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lb/h/h/b$g;

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lb/h/h/b$b;->a:Lb/h/d/b/e;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p1, Lb/h/h/b$g;->b:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/h/h/b$b;->a:Lb/h/d/b/e;

    iget-object p1, p1, Lb/h/h/b$g;->a:Landroid/graphics/Typeface;

    iget-object v1, p0, Lb/h/h/b$b;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Lb/h/d/b/e;->a(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lb/h/h/b$b;->a:Lb/h/d/b/e;

    :goto_0
    iget-object v1, p0, Lb/h/h/b$b;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Lb/h/d/b/e;->a(ILandroid/os/Handler;)V

    :goto_1
    return-void
.end method
