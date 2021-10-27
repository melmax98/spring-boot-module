<head>
    <title>List of events</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            text-align: center;
            padding: 8px;
        }

        h2 {
            font: 2rem 'AmstelvarAlpha', sans-serif;
            text-align: center;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2
        }

        th {
            background-color: #04AA6D;
            color: white;
        }
    </style>
</head>

<div id="header">
    <h2>List of events</h2>
</div>
<div id="content">
    <table>
        <thead>
        <th>ID</th>
        <th>Title</th>
        <th>Date</th>
        <th></th>
        </thead>
        <tbody>
        <#list events as event>
            <tr>
                <td>${event.getEventId()}</td>
                <td>${event.getTitle()}</td>
                <td>${event.getDate()?date}</td>
                <td><a href="/event/${event.getEventId()}">edit</a></td>
            </tr>
        </#list>
        </tbody>
    </table>
</div>