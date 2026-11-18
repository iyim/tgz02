.class public Lb/h/c/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/h/c/b;->a(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lb/h/c/b$d;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lb/h/c/b$d;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lb/h/c/b$a;->b:Lb/h/c/b$d;

    iput-object p2, p0, Lb/h/c/b$a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lb/h/c/b$a;->b:Lb/h/c/b$d;

    iget-object v1, p0, Lb/h/c/b$a;->c:Ljava/lang/Object;

    iput-object v1, v0, Lb/h/c/b$d;->b:Ljava/lang/Object;

    return-void
.end method
