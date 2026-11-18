.class public Lb/k/d/p$c;
.super Lb/k/d/l;
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
.field public final synthetic b:Lb/k/d/p;


# direct methods
.method public constructor <init>(Lb/k/d/p;)V
    .locals 0

    iput-object p1, p0, Lb/k/d/p$c;->b:Lb/k/d/p;

    invoke-direct {p0}, Lb/k/d/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 2

    iget-object p1, p0, Lb/k/d/p$c;->b:Lb/k/d/p;

    iget-object p1, p1, Lb/k/d/p;->o:Lb/k/d/m;

    .line 1
    iget-object v0, p1, Lb/k/d/m;->c:Landroid/content/Context;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, p2, v1}, Lb/k/d/i;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method
