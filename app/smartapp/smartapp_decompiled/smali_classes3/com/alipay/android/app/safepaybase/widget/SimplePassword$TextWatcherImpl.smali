.class public Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;
.super Ljava/lang/Object;
.source "SimplePassword.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/safepaybase/widget/SimplePassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextWatcherImpl"
.end annotation


# instance fields
.field private isSendSubmit:Z

.field private skipTextChanged:Z

.field final synthetic this$0:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->this$0:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 115
    iput-boolean p1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->skipTextChanged:Z

    .line 116
    iput-boolean p1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->isSendSubmit:Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    .line 121
    :try_start_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    .line 123
    invoke-interface {p1, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-eq v4, v5, :cond_0

    .line 124
    iput-boolean v3, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->skipTextChanged:Z

    add-int/lit8 v3, v2, 0x1

    const-string v4, "0"

    .line 125
    invoke-interface {p1, v2, v3, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    :cond_1
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->this$0:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->this$0:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$200(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$102(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->this$0:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->this$0:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$100(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, v0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$300(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;I)V

    .line 131
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->this$0:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {p1}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$100(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    .line 132
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->this$0:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {p1}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$400(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Lcom/alipay/android/app/safepaybase/OnConfirmListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->isSendSubmit:Z

    if-nez p1, :cond_2

    .line 133
    iget-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->this$0:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {p1}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$400(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Lcom/alipay/android/app/safepaybase/OnConfirmListener;

    move-result-object p1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->this$0:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$900(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Lcom/alipay/android/app/safepaybase/util/EditTextUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->this$0:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$500(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->this$0:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {v2}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$600(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->this$0:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {v4}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$700(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->this$0:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {v5}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$800(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/alipay/android/app/safepaybase/util/EditTextUtil;->getText(ILjava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/safepaybase/EncryptRandomType;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alipay/android/app/safepaybase/OnConfirmListener;->onUserConfirm(Ljava/lang/String;)V

    .line 137
    :cond_2
    iget-boolean p1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->isSendSubmit:Z

    if-nez p1, :cond_4

    .line 138
    iput-boolean v3, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->isSendSubmit:Z

    goto :goto_1

    .line 142
    :cond_3
    iput-boolean v1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->isSendSubmit:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 145
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7

    .line 158
    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->skipTextChanged:Z

    if-nez v0, :cond_0

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->this$0:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$900(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Lcom/alipay/android/app/safepaybase/util/EditTextUtil;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->this$0:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$500(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)I

    move-result v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/alipay/android/app/safepaybase/util/EditTextUtil;->OnTextChanged(ILjava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 162
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 165
    iput-boolean p1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$TextWatcherImpl;->skipTextChanged:Z

    return-void
.end method
