.class public Lb/k/d/p$a;
.super Lb/a/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/k/d/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lb/k/d/p;


# direct methods
.method public constructor <init>(Lb/k/d/p;Z)V
    .locals 0

    iput-object p1, p0, Lb/k/d/p$a;->c:Lb/k/d/p;

    invoke-direct {p0, p2}, Lb/a/b;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lb/k/d/p$a;->c:Lb/k/d/p;

    const/4 v1, 0x1

    .line 1
    invoke-virtual {v0, v1}, Lb/k/d/p;->d(Z)Z

    iget-object v1, v0, Lb/k/d/p;->h:Lb/a/b;

    invoke-virtual {v1}, Lb/a/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lb/k/d/p;->n()Z

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lb/k/d/p;->g:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->a()V

    :goto_0
    return-void
.end method
