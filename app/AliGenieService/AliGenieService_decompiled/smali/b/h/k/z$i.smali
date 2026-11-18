.class public Lb/h/k/z$i;
.super Lb/h/k/z$h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/k/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# static fields
.field public static final o:Lb/h/k/z;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    invoke-static {v0}, Lb/h/k/z;->a(Landroid/view/WindowInsets;)Lb/h/k/z;

    move-result-object v0

    sput-object v0, Lb/h/k/z$i;->o:Lb/h/k/z;

    return-void
.end method

.method public constructor <init>(Lb/h/k/z;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lb/h/k/z$h;-><init>(Lb/h/k/z;Landroid/view/WindowInsets;)V

    return-void
.end method

.method public constructor <init>(Lb/h/k/z;Lb/h/k/z$i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lb/h/k/z$h;-><init>(Lb/h/k/z;Lb/h/k/z$h;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    return-void
.end method
