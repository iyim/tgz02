.class public Lb/h/k/a0/c$c;
.super Lb/h/k/a0/c$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/k/a0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Lb/h/k/a0/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/h/k/a0/c$b;-><init>(Lb/h/k/a0/c;)V

    return-void
.end method


# virtual methods
.method public addExtraDataToAccessibilityNodeInfo(ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lb/h/k/a0/c$a;->a:Lb/h/k/a0/c;

    .line 1
    new-instance p3, Lb/h/k/a0/b;

    invoke-direct {p3, p2}, Lb/h/k/a0/b;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    invoke-virtual {p1}, Lb/h/k/a0/c;->a()V

    return-void
.end method
