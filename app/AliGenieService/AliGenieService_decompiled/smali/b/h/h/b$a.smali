.class public Lb/h/h/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


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
        "Ljava/util/concurrent/Callable<",
        "Lb/h/h/b$g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lb/h/h/a;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb/h/h/a;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lb/h/h/b$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lb/h/h/b$a;->b:Lb/h/h/a;

    iput p3, p0, Lb/h/h/b$a;->c:I

    iput-object p4, p0, Lb/h/h/b$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/h/h/b$a;->a:Landroid/content/Context;

    iget-object v1, p0, Lb/h/h/b$a;->b:Lb/h/h/a;

    iget v2, p0, Lb/h/h/b$a;->c:I

    invoke-static {v0, v1, v2}, Lb/h/h/b;->a(Landroid/content/Context;Lb/h/h/a;I)Lb/h/h/b$g;

    move-result-object v0

    iget-object v1, v0, Lb/h/h/b$g;->a:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    sget-object v2, Lb/h/h/b;->a:Lb/e/f;

    iget-object v3, p0, Lb/h/h/b$a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lb/e/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
