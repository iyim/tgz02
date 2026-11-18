.class public Lcom/aligenie/ags/access/FirstFragment$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aligenie/ags/access/FirstFragment;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/aligenie/ags/access/FirstFragment;


# direct methods
.method public constructor <init>(Lcom/aligenie/ags/access/FirstFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/aligenie/ags/access/FirstFragment$a;->b:Lcom/aligenie/ags/access/FirstFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/aligenie/ags/access/FirstFragment$a;->b:Lcom/aligenie/ags/access/FirstFragment;

    invoke-static {p1}, Lb/o/v/b;->b(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p1

    sget v0, Lc/b/a/a/a;->action_FirstFragment_to_SecondFragment:I

    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->b(I)V

    return-void
.end method
