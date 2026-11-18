.class public Lorg/jdom/JDOMException;
.super Ljava/lang/Exception;
.source "JDOMException.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: JDOMException.java,v $ $Revision: 1.24 $ $Date: 2007/11/10 05:28:59 $ $Name: jdom_1_1 $"


# instance fields
.field private cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Error occurred in JDOM application."

    .line 88
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 113
    iput-object p2, p0, Lorg/jdom/JDOMException;->cause:Ljava/lang/Throwable;

    return-void
.end method

.method private static getNestedException(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    .line 274
    instance-of v0, p0, Lorg/jdom/JDOMException;

    if-eqz v0, :cond_0

    .line 275
    nop

    nop

    invoke-virtual {p0}, Lorg/jdom/JDOMException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0

    .line 278
    :cond_0
    instance-of v0, p0, Lorg/xml/sax/SAXException;

    if-eqz v0, :cond_1

    .line 279
    nop

    nop

    invoke-virtual {p0}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object p0

    return-object p0

    .line 282
    :cond_1
    instance-of v0, p0, Ljava/sql/SQLException;

    if-eqz v0, :cond_2

    .line 283
    nop

    nop

    invoke-virtual {p0}, Ljava/sql/SQLException;->getNextException()Ljava/sql/SQLException;

    move-result-object p0

    return-object p0

    .line 286
    :cond_2
    instance-of v0, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_3

    .line 287
    nop

    nop

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0

    .line 290
    :cond_3
    instance-of v0, p0, Ljava/lang/ExceptionInInitializerError;

    if-eqz v0, :cond_4

    .line 291
    nop

    nop

    invoke-virtual {p0}, Ljava/lang/ExceptionInInitializerError;->getException()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0

    .line 294
    :cond_4
    instance-of v0, p0, Ljava/rmi/RemoteException;

    if-eqz v0, :cond_5

    .line 295
    check-cast p0, Ljava/rmi/RemoteException;

    iget-object p0, p0, Ljava/rmi/RemoteException;->detail:Ljava/lang/Throwable;

    return-object p0

    :cond_5
    const-string v0, "getRootCause"

    const-string v1, "javax.naming.NamingException"

    .line 301
    invoke-static {p0, v1, v0}, Lorg/jdom/JDOMException;->getNestedException(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_6

    return-object v1

    :cond_6
    const-string v1, "javax.servlet.ServletException"

    .line 306
    invoke-static {p0, v1, v0}, Lorg/jdom/JDOMException;->getNestedException(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getNestedException(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 2

    .line 320
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 321
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 322
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 324
    new-array v1, v0, [Ljava/lang/Class;

    .line 325
    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 326
    new-array p2, v0, [Ljava/lang/Object;

    .line 327
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 268
    iget-object v0, p0, Lorg/jdom/JDOMException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 4

    .line 138
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object v0, p0

    .line 144
    :cond_0
    invoke-static {v0}, Lorg/jdom/JDOMException;->getNestedException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 146
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 151
    instance-of v3, v0, Lorg/xml/sax/SAXException;

    if-eqz v3, :cond_1

    .line 152
    move-object v3, v0

    nop

    nop

    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 156
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    :cond_1
    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    .line 164
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 172
    :cond_3
    :goto_0
    instance-of v2, v0, Lorg/jdom/JDOMException;

    if-eqz v2, :cond_0

    :cond_4
    return-object v1
.end method

.method public initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 125
    iput-object p1, p0, Lorg/jdom/JDOMException;->cause:Ljava/lang/Throwable;

    return-object p0
.end method

.method public printStackTrace()V
    .locals 3

    .line 189
    invoke-super {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, p0

    .line 195
    :cond_0
    invoke-static {v0}, Lorg/jdom/JDOMException;->getNestedException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 196
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Caused by: "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 200
    instance-of v1, v0, Lorg/jdom/JDOMException;

    if-eqz v1, :cond_0

    :cond_1
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 2

    .line 216
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    move-object v0, p0

    .line 222
    :cond_0
    invoke-static {v0}, Lorg/jdom/JDOMException;->getNestedException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "Caused by: "

    .line 223
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 227
    instance-of v1, v0, Lorg/jdom/JDOMException;

    if-eqz v1, :cond_0

    :cond_1
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 2

    .line 243
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    move-object v0, p0

    .line 249
    :cond_0
    invoke-static {v0}, Lorg/jdom/JDOMException;->getNestedException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "Caused by: "

    .line 250
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 254
    instance-of v1, v0, Lorg/jdom/JDOMException;

    if-eqz v1, :cond_0

    :cond_1
    return-void
.end method
