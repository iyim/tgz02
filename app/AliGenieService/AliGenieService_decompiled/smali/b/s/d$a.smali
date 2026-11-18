.class public Lb/s/d$a;
.super Lb/s/m;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/s/d;->a(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;


# direct methods
.method public constructor <init>(Lb/s/d;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, Lb/s/d$a;->a:Landroid/view/View;

    invoke-direct {p0}, Lb/s/m;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lb/s/j;)V
    .locals 3

    iget-object v0, p0, Lb/s/d$a;->a:Landroid/view/View;

    .line 1
    sget-object v1, Lb/s/y;->a:Lb/s/e0;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v2}, Lb/s/e0;->a(Landroid/view/View;F)V

    .line 2
    iget-object v0, p0, Lb/s/d$a;->a:Landroid/view/View;

    .line 3
    sget-object v1, Lb/s/y;->a:Lb/s/e0;

    invoke-virtual {v1, v0}, Lb/s/e0;->a(Landroid/view/View;)V

    .line 4
    invoke-virtual {p1, p0}, Lb/s/j;->b(Lb/s/j$d;)Lb/s/j;

    return-void
.end method
