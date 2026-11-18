.class public Lb/b/p/i/k$a;
.super Lb/h/k/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/p/i/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final b:Landroid/view/ActionProvider;

.field public final synthetic c:Lb/b/p/i/k;


# direct methods
.method public constructor <init>(Lb/b/p/i/k;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .locals 0

    iput-object p1, p0, Lb/b/p/i/k$a;->c:Lb/b/p/i/k;

    invoke-direct {p0, p2}, Lb/h/k/b;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lb/b/p/i/k$a;->b:Landroid/view/ActionProvider;

    return-void
.end method
