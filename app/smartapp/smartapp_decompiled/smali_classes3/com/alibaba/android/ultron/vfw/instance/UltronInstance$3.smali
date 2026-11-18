.class Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$3;
.super Ljava/lang/Object;
.source "UltronInstance.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->showLoading(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;)V
    .locals 0

    .line 598
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$3;->this$0:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 601
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
